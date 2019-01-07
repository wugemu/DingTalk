.class final Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/ImageView;

.field c:Lcom/alibaba/wukong/im/Message;

.field d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;-><init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 355
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;-><init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method
