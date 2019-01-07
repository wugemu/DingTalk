.class public final Lbkl$4;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbkl$4;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkl$4;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lbkl$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 351
    iget-object v0, p0, Lbkl$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$4;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lbkl$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbkl$4;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbkl;->b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V

    .line 353
    return-void
.end method
