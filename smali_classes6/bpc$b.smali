.class public interface abstract Lbpc$b;
.super Ljava/lang/Object;
.source "CircleCommentDraftDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpc;
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
    .line 69
    const-string/jumbo v0, "post_id"

    invoke-static {v0}, Lbpa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpc$b;->a:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "combined_id"

    invoke-static {v0}, Lbpa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpc$b;->b:Ljava/lang/String;

    return-void
.end method
