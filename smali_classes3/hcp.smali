.class public final Lhcp;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "arg_key_doc_infos"

    sput-object v0, Lhcp;->a:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "arg_key_doc_info_index"

    sput-object v0, Lhcp;->b:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "arg_key_doc_info_nav_from"

    sput-object v0, Lhcp;->c:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "action_photo_docs_scan_done"

    sput-object v0, Lhcp;->d:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "key_photo_docs_to_send"

    sput-object v0, Lhcp;->e:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "key_photo_docs_type"

    sput-object v0, Lhcp;->f:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "key_doc_les_nav_from"

    sput-object v0, Lhcp;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
