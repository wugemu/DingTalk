.class final Lhfw$3;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfw;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lhfw$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 109
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    .line 1112
    if-eqz p1, :cond_0

    .line 1113
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1124
    :goto_0
    const-string/jumbo v2, "UCCore"

    const/4 v3, 0x0

    const-string/jumbo v4, "uc_core_init"

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "uc_core_type="

    aput-object v7, v5, v6

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v2

    iget-boolean v3, p0, Lhfw$3;->a:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitUCCoreInitCoreType(II)V

    .line 1128
    :cond_0
    invoke-static {}, Lhfw;->c()V

    .line 109
    return-void

    .line 1115
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5185\u6838\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u5185\u6838\u7c7b\u578b\u4e3aU3\u5185\u6838 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhfw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5185\u6838\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u5185\u6838\u7c7b\u578b\u4e3a\u7cfb\u7edf\u5185\u6838 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhfw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5185\u6838\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u5185\u6838\u7c7b\u578b\u4e3aU4\u5185\u6838 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhfw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1125
    goto :goto_1

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
