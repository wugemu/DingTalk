.class public final Lcqz$b;
.super Ljava/lang/Object;
.source "EmotionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqz$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "packageId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcqz$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p3, "emotions":Ljava/util/List;, "Ljava/util/List<Lcqz$a;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcqz$b;->c:I

    .line 799
    iput-object p1, p0, Lcqz$b;->a:Ljava/lang/String;

    .line 800
    iput p2, p0, Lcqz$b;->b:I

    .line 801
    iput-object p3, p0, Lcqz$b;->d:Ljava/util/List;

    .line 802
    return-void
.end method
