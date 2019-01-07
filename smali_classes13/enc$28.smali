.class final Lenc$28;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcch;",
        "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 1022
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;>;"
    iput-object p1, p0, Lenc$28;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1022
    check-cast p1, Lcch;

    .line 2025
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;->fromIdl(Lcch;)Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;

    move-result-object v0

    .line 1022
    return-object v0
.end method
