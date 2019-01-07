.class final Lcom/mybank/android/phone/common/ui/SimplePassword$2;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/ui/SimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/ui/SimplePassword;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/ui/SimplePassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/ui/SimplePassword;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SimplePassword$2;->a:Lcom/mybank/android/phone/common/ui/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
