.class public abstract Lhak;
.super Ljava/lang/Object;
.source "ConvertEventListener.java"


# instance fields
.field d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhak;->d:Ljava/util/Vector;

    .line 15
    invoke-virtual {p0, p1}, Lhak;->a(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .prologue
    .line 19
    iget-object v0, p0, Lhak;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public abstract a(Lhai;)V
.end method
