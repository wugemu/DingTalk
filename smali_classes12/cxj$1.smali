.class final Lcxj$1;
.super Ljava/lang/Object;
.source "SessionRecruitmentTextItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxj;


# direct methods
.method constructor <init>(Lcxj;)V
    .locals 0
    .param p1, "this$0"    # Lcxj;

    .prologue
    .line 170
    iput-object p1, p0, Lcxj$1;->a:Lcxj;

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
    .line 174
    iget-object v0, p0, Lcxj$1;->a:Lcxj;

    .line 1026
    iget-object v0, v0, Lcxj;->A:Landroid/widget/TextView;

    .line 174
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v0

    const/4 v1, 0x0

    .line 1028
    iput-object v1, v0, Ldex;->a:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "im_user_show_session_title_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
