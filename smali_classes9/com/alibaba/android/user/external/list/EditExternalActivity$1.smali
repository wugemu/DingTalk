.class final Lcom/alibaba/android/user/external/list/EditExternalActivity$1;
.super Ljava/lang/Object;
.source "EditExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/EditExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/EditExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$1;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$1;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V

    .line 139
    return-void
.end method
