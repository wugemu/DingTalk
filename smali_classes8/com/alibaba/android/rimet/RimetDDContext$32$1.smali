.class final Lcom/alibaba/android/rimet/RimetDDContext$32$1;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$32;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/alibaba/android/rimet/RimetDDContext$32;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$32;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$32;

    .prologue
    .line 2904
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$32$1;->c:Lcom/alibaba/android/rimet/RimetDDContext$32;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$32$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/rimet/RimetDDContext$32$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2907
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$32$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$32$1;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    return-void
.end method
