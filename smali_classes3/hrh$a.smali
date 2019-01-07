.class public final Lhrh$a;
.super Ljava/lang/Object;
.source "DingExtentionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lhrg$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lhrg$a;

    invoke-direct {v0}, Lhrg$a;-><init>()V

    iput-object v0, p0, Lhrh$a;->a:Lhrg$a;

    .line 293
    return-void
.end method
