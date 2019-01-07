.class public interface abstract Lkyo;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lkvn;

.field public static final B:Lkvn;

.field public static final C:Lkvn;

.field public static final D:Lkvn;

.field public static final E:Lkvn;

.field public static final F:Lkvn;

.field public static final G:Lkvn;

.field public static final H:Lkvn;

.field public static final I:Lkvn;

.field public static final J:Lkvn;

.field public static final K:Lkvn;

.field public static final L:Lkvn;

.field public static final M:Lkvn;

.field public static final N:Lkvn;

.field public static final O:Lkvn;

.field public static final P:Lkvn;

.field public static final Q:Lkvn;

.field public static final R:Lkvn;

.field public static final S:Lkvn;

.field public static final T:Lkvn;

.field public static final U:Lkvn;

.field public static final V:Lkvn;

.field public static final W:Lkvn;

.field public static final X:Lkvn;

.field public static final Y:Lkvn;

.field public static final Z:Lkvn;

.field public static final aa:Lkvn;

.field public static final ab:Lkvn;

.field public static final ac:Lkvn;

.field public static final ad:Lkvn;

.field public static final ae:Lkvn;

.field public static final af:Lkvn;

.field public static final ag:Lkvn;

.field public static final e:Lkvn;

.field public static final f:Lkvn;

.field public static final g:Lkvn;

.field public static final h:Lkvn;

.field public static final i:Lkvn;

.field public static final j:Lkvn;

.field public static final k:Lkvn;

.field public static final l:Lkvn;

.field public static final m:Lkvn;

.field public static final n:Lkvn;

.field public static final o:Lkvn;

.field public static final p:Lkvn;

.field public static final q:Lkvn;

.field public static final r:Lkvn;

.field public static final s:Lkvn;

.field public static final t:Lkvn;

.field public static final u:Lkvn;

.field public static final v:Lkvn;

.field public static final w:Lkvn;

.field public static final x:Lkvn;

.field public static final y:Lkvn;

.field public static final z:Lkvn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.1.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->e:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.1.2"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->f:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.1.2.3.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->g:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.1.2.3.2"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->h:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.1.2.3.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->i:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.4.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->j:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.2.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->k:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.4.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->l:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->l:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->m:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->l:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->n:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->l:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->o:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->l:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->p:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->q:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.2"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->r:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->s:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.4"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->t:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.5"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->u:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.6"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->v:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.7"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->w:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.8"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->x:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.9"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->y:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.10"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->z:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.11"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->A:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.12"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->B:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.13"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->C:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.14"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->D:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.15"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->E:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.16"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->F:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.17"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->G:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.18"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->H:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.19"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->I:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.0.20"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->J:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->K:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.2"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->L:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->M:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.4"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->N:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.5"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->O:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.6"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->P:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10045.3.1.7"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->Q:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10046.2.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->R:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10040.4.1"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->S:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10040.4.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->T:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.3.133.16.840.63.0"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->U:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->U:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->V:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->U:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->W:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->U:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".16"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->X:Lkvn;

    new-instance v0, Lkvn;

    const-string/jumbo v1, "1.2.840.10046.3"

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->Y:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->Z:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->aa:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->ab:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->ac:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->ad:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->ae:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->af:Lkvn;

    new-instance v0, Lkvn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkyo;->Y:Lkvn;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkvn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkyo;->ag:Lkvn;

    return-void
.end method
