.class final Lfhg$1;
.super Ljava/lang/Object;
.source "CreateOrgViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhg;


# direct methods
.method constructor <init>(Lfhg;)V
    .locals 0
    .param p1, "this$0"    # Lfhg;

    .prologue
    .line 49
    iput-object p1, p0, Lfhg$1;->a:Lfhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lfhg$1;->a:Lfhg;

    invoke-static {v0}, Lfhg;->a(Lfhg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v0, v1}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 54
    return-void
.end method
