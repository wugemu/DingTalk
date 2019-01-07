.class public final Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;
.super Ljava/lang/Object;
.source "DingtalkBaseConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$TEL_SOUND_TYPE;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_SOUND_TYPE;,
        Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$CHAT_SOUND_TYPE;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Long;

.field public static final b:Ljava/lang/Long;

.field public static final c:Ljava/lang/Long;

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Long;

.field public static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Integer;

.field public static final s:Ljava/lang/Integer;

.field public static final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 19
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->a:Ljava/lang/Long;

    .line 20
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->b:Ljava/lang/Long;

    .line 21
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->c:Ljava/lang/Long;

    .line 22
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->d:Ljava/lang/Long;

    .line 23
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->e:Ljava/lang/Long;

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->f:Ljava/util/List;

    .line 716
    sput v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->g:I

    .line 719
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->f:Ljava/util/List;

    const-string/jumbo v1, "fosun.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->f:Ljava/util/List;

    const-string/jumbo v1, "fosunfamily.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    const-string/jumbo v0, "t_msg_add_noti"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->h:Ljava/lang/String;

    .line 725
    const-string/jumbo v0, "t_msg_add_adapter"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->i:Ljava/lang/String;

    .line 726
    const-string/jumbo v0, "t_conv_add_adapter"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->j:Ljava/lang/String;

    .line 727
    const-string/jumbo v0, "t_cmp_bm"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->k:Ljava/lang/String;

    .line 728
    const-string/jumbo v0, "t_load_conv"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    .line 729
    const-string/jumbo v0, "t_msg_send"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->m:Ljava/lang/String;

    .line 730
    const-string/jumbo v0, "t_burn_conv"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->n:Ljava/lang/String;

    .line 738
    const-string/jumbo v0, "isFirstTimeChatUnreadMemberTipShow"

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->o:Ljava/lang/String;

    .line 755
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->p:Ljava/util/HashMap;

    .line 997
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->q:Ljava/lang/Integer;

    .line 998
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->r:Ljava/lang/Integer;

    .line 999
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->s:Ljava/lang/Integer;

    .line 1561
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcig$j;->and_calendar_sunday:I

    aput v2, v0, v1

    sget v1, Lcig$j;->and_calendar_monday:I

    aput v1, v0, v4

    sget v1, Lcig$j;->and_calendar_tuesday:I

    aput v1, v0, v5

    sget v1, Lcig$j;->and_calendar_wednesday:I

    aput v1, v0, v3

    const/4 v1, 0x4

    sget v2, Lcig$j;->and_calendar_thursday:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcig$j;->and_calendar_friday:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcig$j;->and_calendar_saturday:I

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->t:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    return-void
.end method
