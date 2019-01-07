.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$3;
.super Ljava/lang/Object;
.source "ChatThemePreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$3;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$3;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->d(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 280
    return-void
.end method
