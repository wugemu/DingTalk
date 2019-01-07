.class final Lcom/alibaba/android/rimet/RimetDDContext$48;
.super Lcom/alibaba/wukong/WKManager$CustomInterface;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->attachOnCreate()V
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
    .line 3958
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$48;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcom/alibaba/wukong/WKManager$CustomInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCustomUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$48;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
