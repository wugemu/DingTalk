.class public final Lcql;
.super Ljava/lang/Object;
.source "RimetTextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;IZ)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "mask"    # I
    .param p2, "setMovement"    # Z

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcqm;->a(Landroid/widget/TextView;I)Z

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 83
    :cond_0
    return-void
.end method
