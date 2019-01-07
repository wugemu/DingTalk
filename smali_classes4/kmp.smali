.class public interface abstract Lkmp;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lkmp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lkmp$1;

    invoke-direct {v0}, Lkmp$1;-><init>()V

    sput-object v0, Lkmp;->a:Lkmp;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkmo;",
            ">;"
        }
    .end annotation
.end method
