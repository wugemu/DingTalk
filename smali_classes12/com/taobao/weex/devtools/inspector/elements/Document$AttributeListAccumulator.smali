.class public final Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
.super Ljava/util/ArrayList;
.source "Document.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeListAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-virtual {p0, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method
