.class public interface abstract Lkmf;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Lkmf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lkmf$1;

    invoke-direct {v0}, Lkmf$1;-><init>()V

    sput-object v0, Lkmf;->a:Lkmf;

    return-void
.end method


# virtual methods
.method public abstract a()Lknc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
