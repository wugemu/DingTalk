.class final Ldvw$1;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvw;-><init>(Landroid/app/Activity;Ldvu;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 161
    iput-object p1, p0, Ldvw$1;->a:Ldvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Ldvw$1;->a:Ldvw;

    invoke-static {v0}, Ldvw;->a(Ldvw;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Ldvw$1;->a:Ldvw;

    invoke-static {v1}, Ldvw;->b(Ldvw;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ldvw$1;->a:Ldvw;

    invoke-static {v2}, Ldvw;->a(Ldvw;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 167
    :cond_0
    return-void
.end method
