.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2$1;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2$1;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1203
    sget v0, Lezg$l;->add_2_group_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 200
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 209
    return-void
.end method
