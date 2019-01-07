.class final Lcyg$1;
.super Lcti;
.source "UserEncryptedAudioFromViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcyg;


# direct methods
.method constructor <init>(Lcyg;)V
    .locals 0
    .param p1, "this$0"    # Lcyg;

    .prologue
    .line 32
    iput-object p1, p0, Lcyg$1;->a:Lcyg;

    invoke-direct {p0}, Lcti;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcyg$1;->a:Lcyg;

    invoke-static {v0}, Lcyg;->a(Lcyg;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyg$1;->a:Lcyg;

    invoke-static {v0}, Lcyg;->a(Lcyg;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcyg$1;->a:Lcyg;

    iget-object v0, v0, Lcyg;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcyg$1;->a:Lcyg;

    iget-object v0, v0, Lcyg;->d:Landroid/app/Activity;

    return-object v0
.end method
