.class public interface abstract Lfdu$a;
.super Ljava/lang/Object;
.source "CircleCommentDraftDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "post_id"

    invoke-static {v0}, Lfds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfdu$a;->a:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "combined_id"

    invoke-static {v0}, Lfds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfdu$a;->b:Ljava/lang/String;

    return-void
.end method
