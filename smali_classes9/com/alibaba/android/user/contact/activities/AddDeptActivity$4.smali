.class final Lcom/alibaba/android/user/contact/activities/AddDeptActivity$4;
.super Ljava/lang/Object;
.source "AddDeptActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AddDeptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$4;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$4;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->d(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    .line 208
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 203
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 198
    return-void
.end method
