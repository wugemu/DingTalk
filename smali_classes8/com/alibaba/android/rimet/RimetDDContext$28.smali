.class final Lcom/alibaba/android/rimet/RimetDDContext$28;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/UserAgentFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initWuKongEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2754
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$28;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$28;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
