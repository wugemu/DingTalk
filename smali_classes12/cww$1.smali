.class final Lcww$1;
.super Ljava/lang/Object;
.source "RemoveMyAddedMembersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcww;


# direct methods
.method constructor <init>(Lcww;)V
    .locals 0
    .param p1, "this$0"    # Lcww;

    .prologue
    .line 82
    iput-object p1, p0, Lcww$1;->a:Lcww;

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
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "position":I
    iget-object v1, p0, Lcww$1;->a:Lcww;

    invoke-static {v1}, Lcww;->a(Lcww;)Lcww$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcww$1;->a:Lcww;

    invoke-static {v1}, Lcww;->a(Lcww;)Lcww$a;

    move-result-object v1

    iget-object v2, p0, Lcww$1;->a:Lcww;

    invoke-static {v2, v0}, Lcww;->a(Lcww;I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcww$a;->a(J)V

    .line 91
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
