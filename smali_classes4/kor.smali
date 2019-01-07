.class public interface abstract Lkor;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lkor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lkor$1;

    invoke-direct {v0}, Lkor$1;-><init>()V

    sput-object v0, Lkor;->a:Lkor;

    return-void
.end method


# virtual methods
.method public abstract a()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract a(Lokio/BufferedSource;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
