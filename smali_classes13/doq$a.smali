.class public final Ldoq$a;
.super Ljava/lang/Object;
.source "ChatMenusGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final A:Lcng;

.field public static final a:Lcng;

.field public static final b:Lcng;

.field public static final c:Lcng;

.field public static final d:Lcng;

.field public static final e:Lcng;

.field public static final f:Lcng;

.field public static final g:Lcng;

.field public static final h:Lcng;

.field public static final i:Lcng;

.field public static final j:Lcng;

.field public static final k:Lcng;

.field public static final l:Lcng;

.field public static final m:Lcng;

.field public static final n:Lcng;

.field public static final o:Lcng;

.field public static final p:Lcng;

.field public static final q:Lcng;

.field public static final r:Lcng;

.field public static final s:Lcng;

.field public static final t:Lcng;

.field public static final u:Lcng;

.field public static final v:Lcng;

.field public static final w:Lcng;

.field public static final x:Lcng;

.field public static final y:Lcng;

.field public static final z:Lcng;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 73
    new-instance v0, Lcng;

    const/4 v1, 0x1

    sget v2, Lctk$i;->chat_menu_copy:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->a:Lcng;

    .line 74
    new-instance v0, Lcng;

    const/16 v1, 0x15

    sget v2, Lctk$i;->dt_im_menu_copy_text:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->b:Lcng;

    .line 75
    new-instance v0, Lcng;

    const/4 v1, 0x2

    sget v2, Lctk$i;->chat_menu_delete:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->c:Lcng;

    .line 76
    new-instance v0, Lcng;

    const/4 v1, 0x3

    sget v2, Lctk$i;->chat_menu_forward:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->d:Lcng;

    .line 77
    new-instance v0, Lcng;

    const/16 v1, 0x1a

    sget v2, Lctk$i;->dt_im_forward_copy:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->e:Lcng;

    .line 78
    new-instance v0, Lcng;

    const/4 v1, 0x4

    sget v2, Lctk$i;->chat_menu_resend:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->f:Lcng;

    .line 79
    new-instance v0, Lcng;

    const/16 v1, 0xe

    sget v2, Lctk$i;->dt_ding_peg:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->g:Lcng;

    .line 80
    new-instance v0, Lcng;

    const/4 v1, 0x5

    sget v2, Lctk$i;->ding_do_a_ding:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->h:Lcng;

    .line 81
    new-instance v0, Lcng;

    const/4 v1, 0x6

    sget v2, Lctk$i;->message_multiple_choice:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->i:Lcng;

    .line 82
    new-instance v0, Lcng;

    const/4 v1, 0x7

    sget v2, Lctk$i;->space_save:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->j:Lcng;

    .line 83
    new-instance v0, Lcng;

    const/16 v1, 0x8

    sget v2, Lctk$i;->chat_menu_recall:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->k:Lcng;

    .line 84
    new-instance v0, Lcng;

    const/16 v1, 0x9

    sget v2, Lctk$i;->chat_menu_favorite:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->l:Lcng;

    .line 85
    new-instance v0, Lcng;

    const/16 v1, 0xa

    sget v2, Lctk$i;->dt_im_emotion_favorite:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->m:Lcng;

    .line 86
    new-instance v0, Lcng;

    sget v1, Lctk$i;->chat_menu_translate_show:I

    invoke-direct {v0, v3, v1}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->n:Lcng;

    .line 87
    new-instance v0, Lcng;

    sget v1, Lctk$i;->chat_menu_translate_hidden:I

    invoke-direct {v0, v3, v1}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->o:Lcng;

    .line 88
    new-instance v0, Lcng;

    const/16 v1, 0xc

    sget v2, Lctk$i;->message_more_voice_translate_show:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->p:Lcng;

    .line 89
    new-instance v0, Lcng;

    const/16 v1, 0xd

    sget v2, Lctk$i;->message_more_voice_translate_hide:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->q:Lcng;

    .line 90
    new-instance v0, Lcng;

    const/16 v1, 0xf

    sget v2, Lctk$i;->dt_cspace_fileshare_title:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->r:Lcng;

    .line 91
    new-instance v0, Lcng;

    const/16 v1, 0x10

    sget v2, Lctk$i;->dt_message_shield_tip:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->s:Lcng;

    .line 92
    new-instance v0, Lcng;

    const/16 v1, 0x11

    sget v2, Lctk$i;->dt_im_message_quote:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->t:Lcng;

    .line 93
    new-instance v0, Lcng;

    const/16 v1, 0x12

    sget v2, Lctk$i;->dt_im_menu_remind_item_title:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->u:Lcng;

    .line 94
    new-instance v0, Lcng;

    const/16 v1, 0x13

    sget v2, Lctk$i;->dt_im_message_update_remind:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->v:Lcng;

    .line 95
    new-instance v0, Lcng;

    const/16 v1, 0x14

    sget v2, Lctk$i;->dt_cspace_action_print:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->w:Lcng;

    .line 96
    new-instance v0, Lcng;

    const/16 v1, 0x16

    sget v2, Lctk$i;->dt_im_copy_link:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->x:Lcng;

    .line 97
    new-instance v0, Lcng;

    const/16 v1, 0x18

    sget v2, Lctk$i;->dt_common_edit:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->y:Lcng;

    .line 98
    new-instance v0, Lcng;

    const/16 v1, 0x19

    sget v2, Lctk$i;->dt_im_debug_set_theme:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->z:Lcng;

    .line 99
    new-instance v0, Lcng;

    const/16 v1, 0x1b

    sget v2, Lctk$i;->dt_im_more_emotion:I

    invoke-direct {v0, v1, v2}, Lcng;-><init>(II)V

    sput-object v0, Ldoq$a;->A:Lcng;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
