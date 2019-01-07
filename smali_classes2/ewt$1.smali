.class final Lewt$1;
.super Ljava/lang/Object;
.source "TeleFloatingVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewt;->d(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field final synthetic b:Lewt;


# direct methods
.method constructor <init>(Lewt;Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
    .locals 0
    .param p1, "this$0"    # Lewt;

    .prologue
    .line 110
    iput-object p1, p0, Lewt$1;->b:Lewt;

    iput-object p2, p0, Lewt$1;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lewt$1;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_2

    .line 115
    iget-object v1, p0, Lewt$1;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lewt$1;->b:Lewt;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    invoke-direct {v2, v0}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lewt;->a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    .line 117
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    const v2, 0x28bf9

    .line 1792
    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Levu;->a(ILjava/lang/String;)V

    .line 120
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string/jumbo v1, "tele_video_h"

    invoke-static {}, Lewt;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "show video run-floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lewt$1;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a()V

    .line 123
    iget-object v1, p0, Lewt$1;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    iget-object v2, p0, Lewt$1;->b:Lewt;

    invoke-static {v2}, Lewt;->b(Lewt;)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a(Ljava/lang/Object;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lewt$1;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_1

    .line 126
    iget-object v1, p0, Lewt$1;->b:Lewt;

    invoke-static {v1}, Lewt;->c(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 127
    iget-object v1, p0, Lewt$1;->b:Lewt;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    invoke-direct {v2, v0}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lewt;->a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    .line 128
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    const v2, 0x28bfa

    .line 2792
    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Levu;->a(ILjava/lang/String;)V

    .line 131
    :cond_3
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string/jumbo v1, "tele_video_h"

    invoke-static {}, Lewt;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "show video holder-floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lewt$1;->b:Lewt;

    invoke-static {v1}, Lewt;->c(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a()V

    goto :goto_0
.end method
