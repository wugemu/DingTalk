.class public final Lcnz;
.super Ljava/lang/Object;
.source "ClipboardWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/CharSequence;
    .param p2, "successNotification"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 35
    :goto_0
    return v2

    .line 27
    :cond_0
    const-string/jumbo v3, "clipboard"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 28
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 31
    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 32
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 35
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
