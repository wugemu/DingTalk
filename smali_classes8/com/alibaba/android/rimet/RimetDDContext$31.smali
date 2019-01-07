.class final Lcom/alibaba/android/rimet/RimetDDContext$31;
.super Lcom/alibaba/wukong/FastConfigListener;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initFastConfigListener()V
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
    .line 2864
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$31;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcom/alibaba/wukong/FastConfigListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lejj;

    invoke-direct {v0}, Lejj;-><init>()V

    .line 2868
    .local v0, "fastConfigInterface":Leiw;
    invoke-interface {v0, p1}, Leiw;->a(Ljava/util/Map;)V

    .line 2870
    return-void
.end method
