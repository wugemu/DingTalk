.class final Lejj$3;
.super Ljava/lang/Object;
.source "FastConfigJsonHandler.java"

# interfaces
.implements Lejh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejj;


# direct methods
.method constructor <init>(Lejj;)V
    .locals 0
    .param p1, "this$0"    # Lejj;

    .prologue
    .line 154
    iput-object p1, p0, Lejj$3;->a:Lejj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->saveSWFastConfigData(Ljava/lang/String;)V

    .line 158
    return-void
.end method
