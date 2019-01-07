.class final Lewt$2;
.super Ljava/lang/Object;
.source "TeleFloatingVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewt;->e(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V
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
    .line 146
    iput-object p1, p0, Lewt$2;->b:Lewt;

    iput-object p2, p0, Lewt$2;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 150
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lewt$2;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_3

    .line 151
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string/jumbo v1, "tele_video_h"

    invoke-static {}, Lewt;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hide video run-floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->a(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1}, Lewt;->a(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;->b()V

    .line 158
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1, v4}, Lewt;->a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoExtFloatView;

    .line 159
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1, v4}, Lewt;->a(Lewt;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 169
    :cond_2
    :goto_1
    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    invoke-virtual {v1}, Levu;->d()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v1, p0, Lewt$2;->a:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v2, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    if-ne v1, v2, :cond_2

    .line 161
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1}, Lewt;->c(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "tele_video_h"

    invoke-static {}, Lewt;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hide video holder-floating"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1}, Lewt;->c(Lewt;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->b()V

    .line 167
    iget-object v1, p0, Lewt$2;->b:Lewt;

    invoke-static {v1, v4}, Lewt;->a(Lewt;Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;

    goto :goto_1
.end method
