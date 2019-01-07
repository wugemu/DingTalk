.class public final Ljbz$a;
.super Ljava/lang/Object;
.source "DynamicPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljbz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "copy"

    iput-object v0, p0, Ljbz$a;->f:Ljava/lang/String;

    iput-object p1, p0, Ljbz$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ljbz$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ljbz$a;->c:Ljava/lang/String;

    iput-object p4, p0, Ljbz$a;->d:Ljava/lang/String;

    iput-object p5, p0, Ljbz$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljbz;
    .locals 1

    new-instance v0, Ljbz;

    invoke-direct {v0, p0}, Ljbz;-><init>(Ljbz$a;)V

    return-object v0
.end method
