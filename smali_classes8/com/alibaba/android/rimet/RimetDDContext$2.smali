.class final Lcom/alibaba/android/rimet/RimetDDContext$2;
.super Lcah;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDingtalkMiddle()V
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
    .line 1672
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$2;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1675
    invoke-static {p1, p2, p3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 1680
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
