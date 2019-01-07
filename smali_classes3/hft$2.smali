.class final Lhft$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "StickPageTestCDNLocalDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhft;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhft;


# direct methods
.method constructor <init>(Lhft;)V
    .locals 0
    .param p1, "this$0"    # Lhft;

    .prologue
    .line 70
    iput-object p1, p0, Lhft$2;->a:Lhft;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
