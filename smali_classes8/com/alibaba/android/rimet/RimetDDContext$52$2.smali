.class final Lcom/alibaba/android/rimet/RimetDDContext$52$2;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$52;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext$52;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$52;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$52;

    .prologue
    .line 4193
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$52$2;->a:Lcom/alibaba/android/rimet/RimetDDContext$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 4196
    const-string/jumbo v0, "hotpatch test request fail"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4197
    return-void
.end method
