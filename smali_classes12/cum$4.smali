.class final Lcum$4;
.super Ljava/lang/Object;
.source "DingFromManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcum;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcum;


# direct methods
.method constructor <init>(Lcum;)V
    .locals 0
    .param p1, "this$0"    # Lcum;

    .prologue
    .line 145
    iput-object p1, p0, Lcum$4;->a:Lcum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcum$4;->a:Lcum;

    .line 1027
    iget-object v0, v0, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 148
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcum$4;->a:Lcum;

    .line 2027
    iget-object v0, v0, Lcum;->b:Landroid/app/Activity;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lcum$4;->a:Lcum;

    .line 3027
    iget-object v1, v1, Lcum;->b:Landroid/app/Activity;

    .line 149
    iget-object v2, p0, Lcum$4;->a:Lcum;

    .line 4027
    iget-object v2, v2, Lcum;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 149
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
