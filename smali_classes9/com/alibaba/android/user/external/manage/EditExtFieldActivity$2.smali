.class final Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;
.super Ljava/lang/Object;
.source "EditExtFieldActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;Z)Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;->a:Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V

    .line 123
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 117
    return-void
.end method
