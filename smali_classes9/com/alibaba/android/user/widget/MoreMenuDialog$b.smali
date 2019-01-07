.class public final Lcom/alibaba/android/user/widget/MoreMenuDialog$b;
.super Ljava/lang/Object;
.source "MoreMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/MoreMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/alibaba/android/user/widget/MoreMenuDialog;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/MoreMenuDialog;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;->c:Lcom/alibaba/android/user/widget/MoreMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p2, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;->a:I

    .line 89
    iput p3, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$b;->b:I

    .line 90
    return-void
.end method
