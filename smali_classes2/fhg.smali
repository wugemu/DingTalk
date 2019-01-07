.class public final Lfhg;
.super Lfgx;
.source "CreateOrgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhg;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lezg$j;->fragment_contact_home_create_org_layout:I

    return v0
.end method

.method static synthetic a(Lfhg;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhg;

    .prologue
    .line 18
    iget-object v0, p0, Lfhg;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    sget v0, Lezg$h;->rl_create_org_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhg;->b:Landroid/view/View;

    .line 39
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 18
    .line 1044
    iget-object v0, p0, Lfhg;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lfhg;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_create_org_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lfhg;->b:Landroid/view/View;

    new-instance v1, Lfhg$1;

    invoke-direct {v1, p0}, Lfhg$1;-><init>(Lfhg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_0
    return-void

    .line 1048
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
