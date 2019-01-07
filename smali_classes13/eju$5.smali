.class public final Leju$5;
.super Ljava/lang/Object;
.source "OAPopUpWindowHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leju;


# direct methods
.method public constructor <init>(Leju;)V
    .locals 0
    .param p1, "this$0"    # Leju;

    .prologue
    .line 187
    iput-object p1, p0, Leju$5;->a:Leju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Leju$5;->a:Leju;

    invoke-static {v0}, Leju;->c(Leju;)Lelp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v0

    iget-object v1, p0, Leju$5;->a:Leju;

    invoke-static {v1}, Leju;->c(Leju;)Lelp$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lelp;->b(Lelp$a;)V

    .line 192
    iget-object v0, p0, Leju$5;->a:Leju;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leju;->a(Leju;Lelp$a;)Lelp$a;

    .line 194
    :cond_0
    return-void
.end method
