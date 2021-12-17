<?php

// @formatter:off
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Acceptedrefundrequest
 *
 * @property int $r_id
 * @property int $r_from
 * @property int $r_to
 * @property string $r_addname
 * @property string $r_addprice
 * @property string $r_addtype
 * @property string $r_adddescription
 * @property string $r_reason
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRAdddescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRAddname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRAddprice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRAddtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Acceptedrefundrequest whereRTo($value)
 */
	class Acceptedrefundrequest extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Decoapprovallist
 *
 * @property int $dapp_id
 * @property string $dapp_uname
 * @property string $dapp_name
 * @property string $dapp_password
 * @property string $dapp_phone
 * @property string $dapp_email
 * @property string $dapp_address
 * @property int $dapp_yoe
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist query()
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappPhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappUname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decoapprovallist whereDappYoe($value)
 */
	class Decoapprovallist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Decorator
 *
 * @property int $d_id
 * @property string $d_uname
 * @property string $d_name
 * @property string $d_password
 * @property string $d_phone
 * @property string $d_email
 * @property string $d_address
 * @property int $d_yoe
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator query()
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDPhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDUname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Decorator whereDYoe($value)
 */
	class Decorator extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Moderator
 *
 * @property int $m_id
 * @property string $m_uname
 * @property string $m_name
 * @property string $m_password
 * @property string $m_phone
 * @property string $m_email
 * @property string $m_dob
 * @property string $m_gender
 * @property string $m_address
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator query()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMDob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMGender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMPhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderator whereMUname($value)
 */
	class Moderator extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Moderatorapprovallist
 *
 * @property int $ma_id
 * @property string $ma_uname
 * @property string $ma_name
 * @property string $ma_password
 * @property string $ma_phone
 * @property string $ma_email
 * @property string $ma_dob
 * @property string $ma_gender
 * @property string $ma_address
 * @property string $ma_reason
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist query()
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaDob($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaGender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaPhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Moderatorapprovallist whereMaUname($value)
 */
	class Moderatorapprovallist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Orderlist
 *
 * @property int $o_id
 * @property string $o_name
 * @property string $o_type
 * @property string $o_description
 * @property string $o_price
 * @property int $o_ordered_by
 * @property int $o_posted_by
 * @property string $o_posted_byname
 * @property string|null $o_image
 * @property string $o_time
 * @property string $o_updatetime
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist query()
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereODescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOOrderedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOPostedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOPostedByname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOPrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Orderlist whereOUpdatetime($value)
 */
	class Orderlist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Refundrequest
 *
 * @property int $r_id
 * @property int $r_from
 * @property int $r_to
 * @property string $r_addname
 * @property string $r_addprice
 * @property string $r_addtype
 * @property string $r_adddescription
 * @property string $r_reason
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRAdddescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRAddname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRAddprice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRAddtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Refundrequest whereRTo($value)
 */
	class Refundrequest extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Rejectedrefundrequest
 *
 * @property int $r_id
 * @property int $r_from
 * @property int $r_to
 * @property string $r_addname
 * @property string $r_addprice
 * @property string $r_addtype
 * @property string $r_adddescription
 * @property string $r_reason
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRAdddescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRAddname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRAddprice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRAddtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Rejectedrefundrequest whereRTo($value)
 */
	class Rejectedrefundrequest extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Token
 *
 * @property int $id
 * @property int $userid
 * @property string $token
 * @property string $created_at
 * @property string $expired_at
 * @method static \Illuminate\Database\Eloquent\Builder|Token newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Token newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Token query()
 * @method static \Illuminate\Database\Eloquent\Builder|Token whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Token whereExpiredAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Token whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Token whereToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Token whereUserid($value)
 */
	class Token extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Sanctum\PersonalAccessToken[] $tokens
 * @property-read int|null $tokens_count
 * @method static \Database\Factories\UserFactory factory(...$parameters)
 * @method static \Illuminate\Database\Eloquent\Builder|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|User query()
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Wantedpost
 *
 * @property int $wp_id
 * @property string $wp_type
 * @property string $wp_budget
 * @property string $wp_description
 * @property int $wp_posted_by
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost query()
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost whereWpBudget($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost whereWpDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost whereWpId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost whereWpPostedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Wantedpost whereWpType($value)
 */
	class Wantedpost extends \Eloquent {}
}

