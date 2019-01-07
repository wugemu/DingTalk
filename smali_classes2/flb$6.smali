.class final Lflb$6;
.super Ljava/lang/Object;
.source "CreateOrgV4Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflb;


# direct methods
.method constructor <init>(Lflb;)V
    .locals 0
    .param p1, "this$0"    # Lflb;

    .prologue
    .line 463
    iput-object p1, p0, Lflb$6;->a:Lflb;

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
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_contact_create_org_add_friend_tip:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;I)V

    .line 467
    return-void
.end method
