.class final Lczr$1;
.super Ljava/lang/Object;
.source "UserSpacePictureViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczr;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lczr;


# direct methods
.method constructor <init>(Lczr;)V
    .locals 0
    .param p1, "this$0"    # Lczr;

    .prologue
    .line 53
    iput-object p1, p0, Lczr$1;->a:Lczr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lczr$1;->a:Lczr;

    iget-object v1, v1, Lczr;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method
