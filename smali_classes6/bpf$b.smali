.class public interface abstract Lbpf$b;
.super Ljava/lang/Object;
.source "CircleUsrPostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "postId"

    invoke-static {v0}, Lbpa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpf$b;->a:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "author_uid"

    invoke-static {v0}, Lbpa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpf$b;->b:Ljava/lang/String;

    return-void
.end method
