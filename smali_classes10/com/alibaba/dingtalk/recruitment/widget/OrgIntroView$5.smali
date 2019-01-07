.class public final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$5;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$5;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$5;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 402
    :cond_0
    return-void
.end method
