.class public final Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;
.super Ljava/lang/Object;
.source "ObjectDingSent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 500
    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    return-void
.end method
