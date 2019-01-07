.class final Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;
.super Ljava/lang/Object;
.source "OrgInviteQrcodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field final synthetic g:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->g:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    sget v0, Lezg$h;->iv_org_qrcode_qrcode:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->a:Landroid/widget/ImageView;

    .line 280
    sget v0, Lezg$h;->tv_org_qrcode_name:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->b:Landroid/widget/TextView;

    .line 281
    sget v0, Lezg$h;->iv_org_qrcode_reg:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->c:Landroid/widget/ImageView;

    .line 282
    sget v0, Lezg$h;->tv_org_qrcode_save:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->d:Landroid/view/View;

    .line 283
    sget v0, Lezg$h;->tv_org_qrcode_share:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->e:Landroid/view/View;

    .line 284
    sget v0, Lezg$h;->rl_org_qrcode_shotcut:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->f:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_org_qrcode_save:I

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->g:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_org_qrcode_share:I

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->g:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V

    goto :goto_0
.end method
