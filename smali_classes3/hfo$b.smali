.class public final Lhfo$b;
.super Ljava/lang/Object;
.source "RuntimeAppInfoCacheMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field final synthetic f:Lhfo;


# direct methods
.method public constructor <init>(Lhfo;)V
    .locals 0
    .param p1, "this$0"    # Lhfo;

    .prologue
    .line 224
    iput-object p1, p0, Lhfo$b;->f:Lhfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
