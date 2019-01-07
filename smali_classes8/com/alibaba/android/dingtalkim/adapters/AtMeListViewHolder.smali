.class public Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
.super Ljava/lang/Object;
.source "AtMeListViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "commentTitle"    # Ljava/lang/String;

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    const-string/jumbo v1, ""

    .line 235
    :goto_0
    return-object v1

    .line 230
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    .line 231
    .local v0, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string/jumbo p1, ""

    :cond_1
    move-object v1, p1

    .line 235
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method
