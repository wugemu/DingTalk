.class final Lbkl$11;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lbkl$11;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lbkl$11;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lbkl$11;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 167
    iget-object v0, p0, Lbkl$11;->b:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$11;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    return-void
.end method
