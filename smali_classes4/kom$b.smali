.class public abstract Lkom$b;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final l:Lkom$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 926
    new-instance v0, Lkom$b$1;

    invoke-direct {v0}, Lkom$b$1;-><init>()V

    sput-object v0, Lkom$b;->l:Lkom$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkom;)V
    .locals 0
    .param p1, "connection"    # Lkom;

    .prologue
    .line 948
    return-void
.end method

.method public abstract a(Lkoo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
