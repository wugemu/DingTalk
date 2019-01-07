.class public Lorg/abstractj/kalium/SodiumJNI;
.super Ljava/lang/Object;
.source "SodiumJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native crypto_aead_chacha20poly1305_abytes()I
.end method

.method public static final native crypto_aead_chacha20poly1305_decrypt([B[I[B[BII[BI[B[B)I
.end method

.method public static final native crypto_aead_chacha20poly1305_encrypt([BI[I[BI[BI[B[B[B)I
.end method

.method public static final native crypto_aead_chacha20poly1305_ietf_decrypt([B[I[B[BI[BI[B[B)I
.end method

.method public static final native crypto_aead_chacha20poly1305_ietf_encrypt([B[I[BI[BI[B[B[B)I
.end method

.method public static final native crypto_aead_chacha20poly1305_ietf_npubbytes()I
.end method

.method public static final native crypto_aead_chacha20poly1305_keybytes()I
.end method

.method public static final native crypto_aead_chacha20poly1305_npubbytes()I
.end method

.method public static final native crypto_aead_chacha20poly1305_nsecbytes()I
.end method

.method public static final native crypto_auth([B[BI[B)I
.end method

.method public static final native crypto_auth_bytes()I
.end method

.method public static final native crypto_auth_hmacsha256([B[BI[B)I
.end method

.method public static final native crypto_auth_hmacsha256_bytes()I
.end method

.method public static final native crypto_auth_hmacsha256_final([B[B)I
.end method

.method public static final native crypto_auth_hmacsha256_init([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha256_keybytes()I
.end method

.method public static final native crypto_auth_hmacsha256_statebytes()I
.end method

.method public static final native crypto_auth_hmacsha256_update([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha256_verify([B[BI[B)I
.end method

.method public static final native crypto_auth_hmacsha512([B[BI[B)I
.end method

.method public static final native crypto_auth_hmacsha512256([B[BI[B)I
.end method

.method public static final native crypto_auth_hmacsha512256_bytes()I
.end method

.method public static final native crypto_auth_hmacsha512256_final([B[B)I
.end method

.method public static final native crypto_auth_hmacsha512256_init([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha512256_keybytes()I
.end method

.method public static final native crypto_auth_hmacsha512256_statebytes()I
.end method

.method public static final native crypto_auth_hmacsha512256_update([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha512256_verify([B[BI[B)I
.end method

.method public static final native crypto_auth_hmacsha512_bytes()I
.end method

.method public static final native crypto_auth_hmacsha512_final([B[B)I
.end method

.method public static final native crypto_auth_hmacsha512_init([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha512_keybytes()I
.end method

.method public static final native crypto_auth_hmacsha512_statebytes()I
.end method

.method public static final native crypto_auth_hmacsha512_update([B[BI)I
.end method

.method public static final native crypto_auth_hmacsha512_verify([B[BI[B)I
.end method

.method public static final native crypto_auth_keybytes()I
.end method

.method public static final native crypto_auth_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_auth_verify([B[BI[B)I
.end method

.method public static final native crypto_box([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_beforenm([B[B[B)I
.end method

.method public static final native crypto_box_beforenmbytes()I
.end method

.method public static final native crypto_box_boxzerobytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_beforenm([B[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_beforenmbytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_boxzerobytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_keypair([B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_macbytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_noncebytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_open([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_open_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_publickeybytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_secretkeybytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_seed_keypair([B[B[B)I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_seedbytes()I
.end method

.method public static final native crypto_box_curve25519xsalsa20poly1305_zerobytes()I
.end method

.method public static final native crypto_box_detached([B[B[BI[B[B[B)I
.end method

.method public static final native crypto_box_detached_afternm([B[B[BI[B[B)I
.end method

.method public static final native crypto_box_easy([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_easy_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_keypair([B[B)I
.end method

.method public static final native crypto_box_macbytes()I
.end method

.method public static final native crypto_box_noncebytes()I
.end method

.method public static final native crypto_box_open([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_open_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_open_detached([B[B[BI[B[B[B)I
.end method

.method public static final native crypto_box_open_detached_afternm([B[B[BI[B[B)I
.end method

.method public static final native crypto_box_open_easy([B[BI[B[B[B)I
.end method

.method public static final native crypto_box_open_easy_afternm([B[BI[B[B)I
.end method

.method public static final native crypto_box_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_box_publickeybytes()I
.end method

.method public static final native crypto_box_seal([B[BI[B)I
.end method

.method public static final native crypto_box_seal_open([B[BI[B[B)I
.end method

.method public static final native crypto_box_sealbytes()I
.end method

.method public static final native crypto_box_secretkeybytes()I
.end method

.method public static final native crypto_box_seed_keypair([B[B[B)I
.end method

.method public static final native crypto_box_seedbytes()I
.end method

.method public static final native crypto_box_zerobytes()I
.end method

.method public static final native crypto_core_hsalsa20([B[B[B[B)I
.end method

.method public static final native crypto_core_hsalsa20_constbytes()I
.end method

.method public static final native crypto_core_hsalsa20_inputbytes()I
.end method

.method public static final native crypto_core_hsalsa20_keybytes()I
.end method

.method public static final native crypto_core_hsalsa20_outputbytes()I
.end method

.method public static final native crypto_core_salsa20([B[B[B[B)I
.end method

.method public static final native crypto_core_salsa20_constbytes()I
.end method

.method public static final native crypto_core_salsa20_inputbytes()I
.end method

.method public static final native crypto_core_salsa20_keybytes()I
.end method

.method public static final native crypto_core_salsa20_outputbytes()I
.end method

.method public static final native crypto_generichash([BI[BI[BI)I
.end method

.method public static final native crypto_generichash_blake2b([BI[BI[BI)I
.end method

.method public static final native crypto_generichash_blake2b_bytes()I
.end method

.method public static final native crypto_generichash_blake2b_bytes_max()I
.end method

.method public static final native crypto_generichash_blake2b_bytes_min()I
.end method

.method public static final native crypto_generichash_blake2b_final([B[BI)I
.end method

.method public static final native crypto_generichash_blake2b_final_offset([B[BII)I
.end method

.method public static final native crypto_generichash_blake2b_init([B[BII)I
.end method

.method public static final native crypto_generichash_blake2b_init_salt_personal([B[BII[B[B)I
.end method

.method public static final native crypto_generichash_blake2b_keybytes()I
.end method

.method public static final native crypto_generichash_blake2b_keybytes_max()I
.end method

.method public static final native crypto_generichash_blake2b_keybytes_min()I
.end method

.method public static final native crypto_generichash_blake2b_personalbytes()I
.end method

.method public static final native crypto_generichash_blake2b_salt_personal([BI[BI[BI[B[B)I
.end method

.method public static final native crypto_generichash_blake2b_saltbytes()I
.end method

.method public static final native crypto_generichash_blake2b_statebytes()I
.end method

.method public static final native crypto_generichash_blake2b_update([B[BI)I
.end method

.method public static final native crypto_generichash_blake2b_update_offset([B[BII)I
.end method

.method public static final native crypto_generichash_bytes()I
.end method

.method public static final native crypto_generichash_bytes_max()I
.end method

.method public static final native crypto_generichash_bytes_min()I
.end method

.method public static final native crypto_generichash_final([B[BI)I
.end method

.method public static final native crypto_generichash_final_offset([B[BII)I
.end method

.method public static final native crypto_generichash_init([B[BII)I
.end method

.method public static final native crypto_generichash_keybytes()I
.end method

.method public static final native crypto_generichash_keybytes_max()I
.end method

.method public static final native crypto_generichash_keybytes_min()I
.end method

.method public static final native crypto_generichash_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_generichash_statebytes()I
.end method

.method public static final native crypto_generichash_update([B[BI)I
.end method

.method public static final native crypto_generichash_update_offset([B[BII)I
.end method

.method public static final native crypto_hash([B[BI)I
.end method

.method public static final native crypto_hash_bytes()I
.end method

.method public static final native crypto_hash_final([B[B)I
.end method

.method public static final native crypto_hash_final_offset([B[BI)I
.end method

.method public static final native crypto_hash_init([B)I
.end method

.method public static final native crypto_hash_offset([BI[BII)I
.end method

.method public static final native crypto_hash_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_hash_sha256([B[BI)I
.end method

.method public static final native crypto_hash_sha256_bytes()I
.end method

.method public static final native crypto_hash_sha256_final([B[B)I
.end method

.method public static final native crypto_hash_sha256_init([B)I
.end method

.method public static final native crypto_hash_sha256_statebytes()I
.end method

.method public static final native crypto_hash_sha256_update([B[BI)I
.end method

.method public static final native crypto_hash_sha512([B[BI)I
.end method

.method public static final native crypto_hash_sha512_bytes()I
.end method

.method public static final native crypto_hash_sha512_final([B[B)I
.end method

.method public static final native crypto_hash_sha512_init([B)I
.end method

.method public static final native crypto_hash_sha512_statebytes()I
.end method

.method public static final native crypto_hash_sha512_update([B[BI)I
.end method

.method public static final native crypto_hash_statebytes()I
.end method

.method public static final native crypto_hash_update([B[BI)I
.end method

.method public static final native crypto_hash_update_offset([B[BII)I
.end method

.method public static final native crypto_onetimeauth([B[BI[B)I
.end method

.method public static final native crypto_onetimeauth_bytes()I
.end method

.method public static final native crypto_onetimeauth_final([B[B)I
.end method

.method public static final native crypto_onetimeauth_final_offset([B[BI)I
.end method

.method public static final native crypto_onetimeauth_init([B[B)I
.end method

.method public static final native crypto_onetimeauth_keybytes()I
.end method

.method public static final native crypto_onetimeauth_poly1305([B[BI[B)I
.end method

.method public static final native crypto_onetimeauth_poly1305_bytes()I
.end method

.method public static final native crypto_onetimeauth_poly1305_final([B[B)I
.end method

.method public static final native crypto_onetimeauth_poly1305_final_offset([B[BI)I
.end method

.method public static final native crypto_onetimeauth_poly1305_init([B[B)I
.end method

.method public static final native crypto_onetimeauth_poly1305_keybytes()I
.end method

.method public static final native crypto_onetimeauth_poly1305_statebytes()I
.end method

.method public static final native crypto_onetimeauth_poly1305_update([B[BI)I
.end method

.method public static final native crypto_onetimeauth_poly1305_update_offset([B[BII)I
.end method

.method public static final native crypto_onetimeauth_poly1305_verify([B[BI[B)I
.end method

.method public static final native crypto_onetimeauth_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_onetimeauth_statebytes()I
.end method

.method public static final native crypto_onetimeauth_update([B[BI)I
.end method

.method public static final native crypto_onetimeauth_update_offset([B[BII)I
.end method

.method public static final native crypto_onetimeauth_verify([B[BI[B)I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256([BI[BI[BII)I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_ll([BI[BIIII[BI)I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_memlimit_interactive()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_opslimit_interactive()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_saltbytes()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_str([B[BIII)I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_str_verify([B[BI)I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_strbytes()I
.end method

.method public static final native crypto_pwhash_scryptsalsa208sha256_strprefix()Ljava/lang/String;
.end method

.method public static final native crypto_scalarmult([B[B[B)I
.end method

.method public static final native crypto_scalarmult_base([B[B)I
.end method

.method public static final native crypto_scalarmult_bytes()I
.end method

.method public static final native crypto_scalarmult_curve25519([B[B[B)I
.end method

.method public static final native crypto_scalarmult_curve25519_base([B[B)I
.end method

.method public static final native crypto_scalarmult_curve25519_bytes()I
.end method

.method public static final native crypto_scalarmult_curve25519_scalarbytes()I
.end method

.method public static final native crypto_scalarmult_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_scalarmult_scalarbytes()I
.end method

.method public static final native crypto_secretbox_boxzerobytes()I
.end method

.method public static final native crypto_secretbox_detached([B[B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_easy([B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_keybytes()I
.end method

.method public static final native crypto_secretbox_macbytes()I
.end method

.method public static final native crypto_secretbox_noncebytes()I
.end method

.method public static final native crypto_secretbox_open_detached([B[B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_open_easy([B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305([B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_boxzerobytes()I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_keybytes()I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_macbytes()I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_noncebytes()I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_open([B[BI[B[B)I
.end method

.method public static final native crypto_secretbox_xsalsa20poly1305_zerobytes()I
.end method

.method public static final native crypto_secretbox_zerobytes()I
.end method

.method public static final native crypto_shorthash([B[BI[B)I
.end method

.method public static final native crypto_shorthash_bytes()I
.end method

.method public static final native crypto_shorthash_keybytes()I
.end method

.method public static final native crypto_shorthash_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_shorthash_siphash24([B[BI[B)I
.end method

.method public static final native crypto_shorthash_siphash24_bytes()I
.end method

.method public static final native crypto_shorthash_siphash24_keybytes()I
.end method

.method public static final native crypto_sign([B[I[BI[B)I
.end method

.method public static final native crypto_sign_bytes()I
.end method

.method public static final native crypto_sign_detached([B[I[BI[B)I
.end method

.method public static final native crypto_sign_ed25519([B[I[BI[B)I
.end method

.method public static final native crypto_sign_ed25519_bytes()I
.end method

.method public static final native crypto_sign_ed25519_detached([B[I[BI[B)I
.end method

.method public static final native crypto_sign_ed25519_keypair([B[B)I
.end method

.method public static final native crypto_sign_ed25519_open([B[I[BI[B)I
.end method

.method public static final native crypto_sign_ed25519_pk_to_curve25519([B[B)I
.end method

.method public static final native crypto_sign_ed25519_publickeybytes()I
.end method

.method public static final native crypto_sign_ed25519_secretkeybytes()I
.end method

.method public static final native crypto_sign_ed25519_seed_keypair([B[B[B)I
.end method

.method public static final native crypto_sign_ed25519_seedbytes()I
.end method

.method public static final native crypto_sign_ed25519_sk_to_curve25519([B[B)I
.end method

.method public static final native crypto_sign_ed25519_sk_to_pk([B[B)I
.end method

.method public static final native crypto_sign_ed25519_sk_to_seed([B[B)I
.end method

.method public static final native crypto_sign_ed25519_verify_detached([B[BI[B)I
.end method

.method public static final native crypto_sign_keypair([B[B)I
.end method

.method public static final native crypto_sign_open([B[I[BI[B)I
.end method

.method public static final native crypto_sign_primitive()Ljava/lang/String;
.end method

.method public static final native crypto_sign_publickeybytes()I
.end method

.method public static final native crypto_sign_secretkeybytes()I
.end method

.method public static final native crypto_sign_seed_keypair([B[B[B)I
.end method

.method public static final native crypto_sign_seedbytes()I
.end method

.method public static final native crypto_sign_verify_detached([B[BI[B)I
.end method

.method public static final native crypto_stream_chacha20([BI[B[B)I
.end method

.method public static final native crypto_stream_chacha20_ietf([BI[B[B)I
.end method

.method public static final native crypto_stream_chacha20_ietf_noncebytes()I
.end method

.method public static final native crypto_stream_chacha20_ietf_xor([B[BI[B[B)I
.end method

.method public static final native crypto_stream_chacha20_ietf_xor_ic([B[BI[BI[B)I
.end method

.method public static final native crypto_stream_chacha20_keybytes()I
.end method

.method public static final native crypto_stream_chacha20_noncebytes()I
.end method

.method public static final native crypto_stream_chacha20_xor([B[BI[B[B)I
.end method

.method public static final native crypto_stream_chacha20_xor_ic([B[BI[BI[B)I
.end method

.method public static final native crypto_stream_salsa20([BI[B[B)I
.end method

.method public static final native crypto_stream_salsa20_keybytes()I
.end method

.method public static final native crypto_stream_salsa20_noncebytes()I
.end method

.method public static final native crypto_stream_salsa20_xor([B[BI[B[B)I
.end method

.method public static final native crypto_stream_salsa20_xor_ic([B[BI[BI[B)I
.end method

.method public static final native crypto_stream_xsalsa20([BI[B[B)I
.end method

.method public static final native crypto_stream_xsalsa20_keybytes()I
.end method

.method public static final native crypto_stream_xsalsa20_noncebytes()I
.end method

.method public static final native crypto_stream_xsalsa20_xor([B[BI[B[B)I
.end method

.method public static final native crypto_stream_xsalsa20_xor_ic([B[BI[BI[B)I
.end method

.method public static final native randombytes([BI)V
.end method

.method public static final native randombytes_buf([BI)V
.end method

.method public static final native randombytes_close()I
.end method

.method public static final native randombytes_random()I
.end method

.method public static final native randombytes_stir()V
.end method

.method public static final native randombytes_uniform(I)I
.end method

.method public static final native sodium_increment([BI)V
.end method

.method public static final native sodium_init()I
.end method

.method public static final native sodium_version_string()Ljava/lang/String;
.end method
